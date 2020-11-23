cask "reverse-image-search-safari" do
  version "1.3"
  sha256 "82eb9178544f2c7299cc2870dd7c146bd00d2916837f69bad154b6dc3a08a835"

  url "https://github.com/yimingliu/reverse-image-search-safari/releases/download/#{version}/ReverseImageSearch.app.zip"
  appcast "https://github.com/yimingliu/reverse-image-search-safari/releases.atom"
  name "Reverse Image Search"
  desc "Allows reverse image searches directly from a web page"
  homepage "https://github.com/yimingliu/reverse-image-search-safari"

  app "ReverseImageSearch.app"

  zap delete: [
    "~/Library/Application Scripts/com.yimingliu.ReverseImageSearch",
    "~/Library/Application Scripts/com.yimingliu.ReverseImageSearchExt",
    "~/Library/Containers/com.yimingliu.ReverseImageSearch",
    "~/Library/Containers/com.yimingliu.ReverseImageSearchExt",
  ]
end
