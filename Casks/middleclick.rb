cask "middleclick" do
  version "2.4.8.1"
  sha256 "c17d944d9305d6da6c949ab1d5032326668d0e9dbd38ef3061955af4484d3f62"

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast "https://github.com/DaFuqtor/MiddleClick/releases.atom"
  name "MiddleClick"
  homepage "https://github.com/DaFuqtor/MiddleClick"

  app "MiddleClick.app"

  uninstall login_item: "MiddleClick",
            quit:       "com.rouge41.middleClick"

  zap trash: "~/Library/Preferences/com.rouge41.middleClick.plist"

  caveats do
    discontinued
  end
end
