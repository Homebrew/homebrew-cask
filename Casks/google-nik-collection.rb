cask 'google-nik-collection' do
  version '1.2.11'
  sha256 '7a06f90c8c6a9f09dc882dfb7a84cd4d97dae39e064540ecc2f5daa87569df2b'

  url "https://dl.google.com/edgedl/photos/nikcollection-full-#{version}.dmg"
  name 'Google Nik Collection'
  homepage 'https://www.google.com/nikcollection/'

  installer manual: 'Nik Collection.app'

  uninstall delete: [
                      '/Applications/Nik Collection',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/AnalogEfexPro2.lrtemplate',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/ColorEfexPro4.lrtemplate',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/Dfine2.lrtemplate',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/SharpenerPro3_1_RAWPresharpener.lrtemplate',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/SharpenerPro3_2_OutputSharpener.lrtemplate',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/SilverEfexPro2.lrtemplate',
                      '~/Library/Application Support/Adobe/Lightroom/External Editor Presets/Viveza2.lrtemplate',
                    ]

  zap trash: [
               '~/Library/Google/GoogleSoftwareUpdate/Actives/com.google.nikcollection',
               '~/Library/Preferences/Google/Nik Collection',
               '~/Library/Preferences/Google/Nik Collection Installer Logs',
               '/Library/Preferences/Google/Analog Efex Pro 2',
               '/Library/Preferences/Google/Color Efex Pro 4',
               '/Library/Preferences/Google/Dfine 2',
               '/Library/Preferences/Google/HDR Efex Pro 2',
               '/Library/Preferences/Google/Sharpener Pro 3',
               '/Library/Preferences/Google/Silver Efex Pro 2',
             ],
      rmdir: '/Library/Preferences/Google'
end
