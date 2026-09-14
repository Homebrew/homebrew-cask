cask "electron-cash" do
  arch arm: "silicon", intel: "intel"

  version "4.4.6"
  sha256 arm:   "f76cb700e972179bba131e12eaeae72bde7fec9eb8c2eb904d7a87a8080578e2",
         intel: "be1e4a94334d9b41187763334948c8d541f6cf6bf7fd80051870d1ef13bf2006"

  url "https://electroncash.org/downloads/#{version.major_minor_patch}/mac/Electron-Cash-#{version}-macosx-#{arch}.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://electroncash.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Cash[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
