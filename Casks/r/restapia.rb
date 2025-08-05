cask "restapia" do
  version "0.8.14"
  sha256 "f9d2d232c1757046d3d83f35aa63cacb152dcfb8812add29b54f69603bdad384"

  url "https://github.com/RestApia/Releases.Osx.Stable/releases/download/v#{version}-osx-stable/RestApia-osx-stable-Setup.pkg",
      verified: "github.com/RestApia/Releases.Osx.Stable/releases/download/"
  name "RestApia"
  desc "HTTP API client"
  homepage "https://www.restapia.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)/i)
  end



  depends_on macos: ">= :big_sur"

  pkg "RestApia-osx-stable-Setup.pkg"

  uninstall pkgutil: "com.RestApia.RestApia"

  zap trash: "~/.restapia"
end
