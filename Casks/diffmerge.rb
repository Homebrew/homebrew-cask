cask :v1 => 'diffmerge' do
  version '4.2.0.697'
  sha256 '2c6368653af2440bb4460aef9bb1b2b5d8b84b5a3f47994c4abafc4d7ddbff9e'

  url "http://download-us.sourcegear.com/DiffMerge/4.2.0/DiffMerge.#{version}.intel.stable.dmg"
  homepage 'http://www.sourcegear.com/diffmerge'
  license :unknown    # todo: improve this machine-generated value

  app 'DiffMerge.app'
  binary 'DiffMerge.app/Contents/MacOS/DiffMerge', :target => 'diffmerge'

  caveats <<-EOS.undent
    Use "diffmerge --nosplash" to hide the splash screen when using
    diffmerge with external tools such as git.
  EOS
end
