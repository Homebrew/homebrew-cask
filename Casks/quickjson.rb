cask :v1 => 'quickjson' do
  version '1.0.0'
  sha256 '874fc0afd431f68527929a0592c23a81b70d53e6032419e540551fccd662cfd2'

  url "https://github.com/johan/QuickJSON/releases/download/v#{version}/QuickJSON.qlgenerator.zip"
  appcast 'https://github.com/johan/QuickJSON/releases.atom'
  name 'QuickJSON'
  homepage 'https://github.com/johan/QuickJSON'
  license :mit

  preflight do
    system '/usr/bin/ditto', '-xk', '--', "#{staged_path}/QuickJSON.qlgenerator.zip", "#{staged_path}/QuickJSON.qlgenerator"
  end

  qlplugin 'QuickJSON.qlgenerator'
end
