class Candybar < Cask
  url 'http://panic.com/candybar/d/CandyBar%203.3.4.zip'
  homepage 'http://www.panic.com/blog/candybar-mountain-lion-and-beyond'
  version '3.3.4'
  sha1 'f645e9da45a621415a07a7492c45923b1a1fd4d4'
  link 'CandyBar.app'
  caveats <<-EOS.undent
    Candybar is free of charge.  Visit the following link for a license
    http://panic.com/bin/setup.php/cb3/PPQA-YAMA-E3KP-VHXG-B6AL-L
  EOS
end
