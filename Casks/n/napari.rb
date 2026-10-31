cask "napari" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "75bc9cb2988a55a66de681c8faeba3a0c1c41267c8ecd0cabe3ea36a8c9e8136",
         intel: "ca48a715618f7696ccf5ee6d4bef0010f9a14544c6c121444cad5b1bf893165a"

  url "https://github.com/napari/napari/releases/download/v#{version}/napari-#{version}-macOS-#{arch}.pkg"
  name "napari"
  desc "Multi-dimensional image viewer for Python"
  homepage "https://napari.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "napari-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "org.napari.pkg.*",
            delete:  [
              "/Applications/napari (#{version}).app",
              "/Library/napari-#{version}",
            ]

  zap trash: [
    "~/Library/Application Support/napari",
    "~/Library/Caches/napari",
  ]
end
