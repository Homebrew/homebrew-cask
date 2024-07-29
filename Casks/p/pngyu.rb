cask "pngyu" do
  version "1.0.1"
  sha256 "f853a3566236200391a40d12df9519b39f4d30053ab6ed6f60670b7eacca6217"

  url "https://nukesaq88.github.io/Pngyu/download/Pngyu_mac_#{version.no_dots}.zip"
  name "Pngyu"
  desc "Front-end GUI application for pngquant"
  homepage "https://nukesaq88.github.io/Pngyu/"

  deprecate! date: "2024-07-28", because: :unmaintained

  app "Pngyu.app"

  caveats do
    requires_rosetta
  end
end
