cask "ksdiff" do
  version "2.4.1,125:apr-6-2021"
  sha256 "30217646096671f49f5d84b7f03ce3ab34a1c5dacc4bf41933f73edcc114c754"

  url "https://updates.kaleidoscope.app/v2/prod/ksdiff-#{version.before_comma}-#{version.after_comma.before_colon}-#{version.after_colon}.zip"
  name "ksdiff"
  desc "Command-line tool for the App Store version of Kaleidoscope"
  homepage "https://kaleidoscope.app/ksdiff2"

  livecheck do
    url "https://kaleidoscope.app/download/latest/ksdiff"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/ksdiff-(\d+(?:\.\d+)*)-(\d+)-(\w+(?:-\d+)*)\.zip}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  conflicts_with cask: "kaleidoscope"

  pkg "ksdiff-#{version.before_comma}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
