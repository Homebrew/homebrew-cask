cask "cinder" do
  version "0.9.3"
  sha256 "bccb59585f22f28b300c07962e06f9c73abf7ea78839cb202821b10bc34a184c"

  url "https://github.com/cinder/Cinder/releases/download/v#{version}/cinder_#{version}_mac.zip",
      verified: "github.com/cinder/Cinder/"
  name "Cinder"
  desc "C++ library for creative coding"
  homepage "https://libcinder.org/"

  livecheck do
    url "https://libcinder.org/download"
    regex(/href=.*?cinder[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
  end

  suite "cinder_#{version}_mac"

  zap trash: "~/Library/Preferences/org.libcinder.TinderBox.plist"
end
