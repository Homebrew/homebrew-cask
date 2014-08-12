class Diffmerge < Cask
  version '4.2.0.697'
  sha256 '2c6368653af2440bb4460aef9bb1b2b5d8b84b5a3f47994c4abafc4d7ddbff9e'

  url 'http://download-us.sourcegear.com/DiffMerge/4.2.0/DiffMerge.4.2.0.697.intel.stable.dmg'
  homepage 'http://www.sourcegear.com/diffmerge'

  link 'DiffMerge.app'
  binary 'DiffMerge.app/Contents/MacOS/DiffMerge', :target => 'diffmerge'
  
  caveats <<-EOS.undent
    Use `diffmerge --nosplash` when configuring external tools such
    as git to use diffmerge. This will squlech the splash screen.
    EOS
end
