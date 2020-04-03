cask 'mdimagesizemdimporter' do
  version '2.6.1'
  sha256 'ee9e8057d914e3f0330887e72658bc612ba3d665968f742f15190f66eb2e3d54'

  url "https://github.com/Nyx0uf/qlImageSize/releases/download/#{version}/mdImageSize.mdimporter.zip"
  appcast 'https://github.com/Nyx0uf/qlimagesize/releases.atom'
  name 'mdImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  depends_on macos: '>= :high_sierra'

  artifact 'mdImageSize.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/mdImageSize.mdimporter"

  postflight do
    system_command '/usr/bin/mdimport', args: ['-r', "#{ENV['HOME']}/Library/Spotlight/mdImageSize.mdimporter"]
  end
end
