cask "restapia" do
  version "0.8.12"
  sha256 "d2996269fc44aa86d26d79fcdceaf6c29a095b2370aee04acf48dd1b03946eb0"

  arch arm: "arm64"

  url "https://github.com/RestApia/Releases.Osx.Stable/releases/download/v#{version}-osx-stable/RestApia-osx-stable-Setup.pkg",
    verified: "https://github.com/RestApia/Releases.Osx.Stable/releases/download/"

  name "RestApia"
  desc "RestApia is a HTTP API client that employs a code-driven approach to defining API requests. This method offers developers flexibility and control over their API interactions. The interface is designed to be intuitive and developer-friendly, utilizing a simple editor with features like syntax highlighting."
  homepage "https://www.restapia.app/"

  depends_on macos: ">= :big_sur"

  pkg "RestApia-osx-stable-Setup.pkg"

  uninstall pkgutil: [
              "com.RestApia.RestApia",
            ]

  zap trash: "~/.restapia"
end