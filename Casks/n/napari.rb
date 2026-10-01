cask "napari" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.2"
  sha256 arm:   "cd303953bfa2c5ddc71a3d7985003c9f29a2700fb0afb176505f79d4d4c82649",
         intel: "1bf3b1f43d7fbcc01bdbab634b4ba4f7c331384ff7723c80329f5f574bdb4712"

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
