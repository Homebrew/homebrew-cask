cask 'multideco' do
  version '4.14.0'
  sha256 '697321e2448e06d60d1029d5421164c5a83b5bb560c2d549d08b6ba67697ca25'

  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_i386.dmg&keytag=1538541&qwerty=#{Time.now.to_i - 120}&os=mac_intel", referer: "https://www.hhssoftware.com/multideco/installfile.php?os=mac_intel&qwerty=#{Time.now.to_i - 120}&keytag=1538541", user_agent: :fake
  name 'MultiDeco'
  homepage 'https://www.hhssoftware.com/multideco'

  pkg 'MultiDeco_i386.pkg'

  uninstall pkgutil: 'com.hhssoftware.multideco.MultiDeco.pkg'

  zap delete: '~/Library/Preferences/com.hhssoftware.multideco.plist'
  zap delete: '~/Saved Application State/com.hhssoftware.multideco.savedState'
  zap delete: '~/Library/MultiDeco'

  caveats 'HHS Software Corp, and the program author\'s, do not warrant that this program
accurately reflects the Varying Permeability Model or ZHL-16 algorithms, that
it won\'t get you bent or dead, or that it will produce safe, reliable results.

This dive schedule is experimental and you use it at your own risk. Diving in
general is fraught with risk, and decompression diving adds significantly more
risk. Deep diving utilizing multiple gasses, including helium, or rebreathers is
about as risky as it gets.

MultiDeco and the decompression schedules it produces are tools for experienced
mixed-gas decompression divers ONLY. If you have not been properly trained in
mixed-gas decompression diving by an internationally recognized technical
certification agency and/or don\'t have a firm handle on decompression planning
and mixed-gas diving, then DO NOT use this software.

In no event will HHS Software Corp, or the program authors be liable for any
indirect, punitive, special, incidental or consequential damages however they may
arise and even if HHS Software Corp, or program authors, have been previously
advised of the possibility of such damages.'
end
