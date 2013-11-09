class Synergy < Cask
  url 'http://synergy.googlecode.com/files/synergy-1.4.15-MacOSX108-x86_64.dmg'
  homepage 'http://synergy-foss.org/'
  version '1.4.15'
  sha1 '90d8ef8e0fc2840437b9f966898b12cb1e779b23'
  link 'Synergy.app'

  # Should be fixed in the next version
  def caveats; <<-EOS.undent
    After installation please follow the instruction here to make it work on Mavericks
      http://synergy-foss.org/blog/mac-os-x-10-9-mavericks-support/
    EOS
  end
end
