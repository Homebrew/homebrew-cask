class Rcwebcolorpicker < Cask
  url 'http://www.rubicode.com/Downloads/RCWebColorPicker-1.2.X.dmg'
  homepage 'http://www.rubicode.com/Software/RCWebColorPicker'
  version '1.2.x'
  sha1 'bebc90d7ddd40d6979714cdbbee01f3ef156fb55'
  link 'RCWebColorPicker.colorPicker'

  def caveats; <<-EOS.undent
    To install RCWebColorPicker.colorPicker just copy it to ~/Library/
    ColorPickers or /Library/ColorPickers. You may have to create the
    directory first. Once installed, RCWebColorPicker should show up as
    a new option in the system color panel.
    EOS
  end
end
