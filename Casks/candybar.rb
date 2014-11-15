cask :v1 => 'candybar' do
  version '3.3.4'
  sha256 'f305596f195445016b35c9d99a40789c6671195e9cbad0b6e92e808b6c633ad6'

  url "https://panic.com/candybar/d/CandyBar%20#{version}.zip"
  homepage 'http://www.panic.com/blog/candybar-mountain-lion-and-beyond'
  license :unknown

  app 'CandyBar.app'
  caveats <<-EOS.undent
    Candybar is free of charge.  Visit the following link for a license

      http://panic.com/bin/setup.php/cb3/PPQA-YAMA-E3KP-VHXG-B6AL-L
  EOS
end
