cask 'quickjson' do
  version '1.0.0'
  sha256 '874fc0afd431f68527929a0592c23a81b70d53e6032419e540551fccd662cfd2'

  url "https://github.com/johan/QuickJSON/releases/download/v#{version}/QuickJSON.qlgenerator.zip"
  appcast 'https://github.com/johan/QuickJSON/releases.atom',
          checkpoint: '248514b303e47ae0da1001e82a3135afff602a31fd4a3aa44ad8953747848195'
  name 'QuickJSON'
  homepage 'https://github.com/johan/QuickJSON'

  qlplugin 'QuickJSON.qlgenerator'
end
