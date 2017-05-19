cask 'qladdict' do
  version '1.2.3'
  sha256 'bee39f46772ab709aae84bfbaa95f68294cc7de13969c8fa58afb3c94661d483'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QLAddict.qlgenerator.#{version}.zip"
  appcast 'https://github.com/tattali/QLAddict/releases.atom',
          checkpoint: 'af4bd13681cb0a00e4fc3277257d01ffe8bbffc03292fcfa059687e0a7790c7d'
  name 'QLAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QLAddict.qlgenerator'
end
