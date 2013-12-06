class Quotefixformac < Cask
  url 'https://github.com/robertklep/quotefixformac/releases/download/v2.5.0/QuoteFix-2.5.0.zip'
  homepage 'https://github.com/robertklep/quotefixformac'
  version '2.5.0'
  sha1 '9ac25ec9f8596da24619dfdeb67b1be1bdcd0586'
  
  def caveats; <<-EOS.undent
    Follow these instructions to enable mail plugins and link QuoteFix.

    defaults write com.apple.mail EnableBundles -bool true
    defaults write com.apple.mail BundleCompatibilityVersion -string 3

    mkdir -p ~/Library/Mail/Bundles
    cp -R #{destination_path}/QuoteFix.mailbundle ~/Library/Mail/Bundles/
    # killall Mail; open -a Mail

    EOS
  end
end
