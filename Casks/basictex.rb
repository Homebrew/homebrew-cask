cask 'basictex' do
  version '20170607'
  sha256 'da83f12d6bbd9ee427a2142dff9ff3c8f4c4c187285a516c17aa539f09baf563'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
                       "/usr/local/texlive/#{version.major}basic",
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap delete: [
                '/usr/local/texlive/texmf-local',
                "~/Library/texlive/#{version.major}basic",
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]
end
