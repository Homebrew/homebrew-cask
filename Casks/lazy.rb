cask "lazy" do
  version :latest
  sha256 :no_check

  url "https://www.lazy-app.com/download/lazy.pkg"
  name "Lazy"
  homepage "https://www.lazy-app.com/"

  pkg "lazy.pkg"

  uninstall quit:    "com.ahmedmen.Bob",
            pkgutil: "com.lazy.pkg.lazy-app"

  zap trash: [
    "~/Library/Application Scripts/com.ahmedmen.Bob",
    "~/Library/Containers/com.ahmedmen.Bob",
  ]
end
