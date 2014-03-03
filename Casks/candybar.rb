class Candybar < Cask
  url 'http://panic.com/candybar/d/CandyBar%203.3.4.zip'
  homepage 'http://www.panic.com/blog/candybar-mountain-lion-and-beyond'
  version '3.3.4'
  sha256 'f305596f195445016b35c9d99a40789c6671195e9cbad0b6e92e808b6c633ad6'
  link 'CandyBar.app'
  caveats <<-EOS.undent
    Candybar is free of charge.  Visit the following link for a license
    http://panic.com/bin/setup.php/cb3/PPQA-YAMA-E3KP-VHXG-B6AL-L
  EOS
end
