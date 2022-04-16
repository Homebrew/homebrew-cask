cask "ksdiff" do
  version "3.3,146"
  sha256 "8039f5642afead0eac18306b2303cffb477bf7fdf1ebd550ec82cbe9d54464dc"

  url "https://updates.kaleidoscope.app/v#{version.major}/prod/ksdiff-#{version.csv.first}-#{version.csv.second}.zip"
  name "ksdiff"
  desc "Command-line tool for the App Store version of Kaleidoscope"
  homepage "https://kaleidoscope.app/ksdiff#{version.major}"

  livecheck do
    url "https://kaleidoscope.app/download/latest/ksdiff"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/ksdiff[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: [
    "kaleidoscope",
    "homebrew/cask-versions/kaleidoscope2",
    "homebrew/cask-versions/ksdiff2",
  ]

  pkg "ksdiff-#{version.csv.first}/Install ksdiff.pkg"

  uninstall pkgutil: "app.kaleidoscope.v#{version.major}.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
