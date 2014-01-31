class Quotefixformac < Cask
  url 'https://github.com/robertklep/quotefixformac/releases/download/v2.5.2/QuoteFix-v2.5.2.zip'
  homepage 'https://github.com/robertklep/quotefixformac'
  version '2.5.2'
  sha1 '8937c576de13e4d33e64a06ffea18993e8e900cd'
  caveats do
    <<-EOS.undent
    Follow these instructions to enable mail plugins and link QuoteFix:

      defaults write com.apple.mail EnableBundles -bool true
      defaults write com.apple.mail BundleCompatibilityVersion -string 3

      mkdir -p ~/Library/Mail/Bundles
      cp -R #{destination_path}/QuoteFix.mailbundle ~/Library/Mail/Bundles/
      killall Mail; open -a Mail

    EOS
  end
end
