class Quotefixformac < Cask
  version '2.5.2'
  sha256 '8d914ae553b84fe5f246ab1eb030d25792ca8d626b3bbac57acee857135e85a9'

  url 'https://github.com/robertklep/quotefixformac/releases/download/v2.5.2/QuoteFix-v2.5.2.zip'
  homepage 'https://github.com/robertklep/quotefixformac'

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
