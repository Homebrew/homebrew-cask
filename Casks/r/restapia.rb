cask "restapia" do
  version "0.8.12"
  sha256 "d2996269fc44aa86d26d79fcdceaf6c29a095b2370aee04acf48dd1b03946eb0"

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
