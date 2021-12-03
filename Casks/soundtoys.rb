cask "soundtoys" do
  version "5.3.6,16152"
  sha256 "859676347419937c6d77c2eb47dca2b262574db056138b7028e2e3792080bb27"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.major}_#{version.minor}_#{version.patch}_#{version.after_comma}/Soundtoys#{version.major}_#{version.major}.#{version.minor}.#{version.patch}.#{version.after_comma}.dmg",
      verified: "https://storage.googleapis.com/soundtoys-download/"
  name "Soundtoys #{version.major}"
  desc "Audio Effects Plugins"
  homepage "https://www.soundtoys.com/product/soundtoys-#{version.major}/"

  livecheck do
    skip "No version information available"
  end

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil:   ["com.soundtoys.*", "com.paceap.pkg.eden.*"],
            launchctl: ["com.paceap.eden.*"]
end
