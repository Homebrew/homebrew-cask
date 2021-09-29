cask "ksdiff" do
  version "2.4.2,126:sep-7-2021"
  sha256 "11a4e09eab56fed96cb1e1fb5fbec350a726ee8dd07a7d0d1d992dd4e44b6d68"

  url "https://updates.kaleidoscope.app/v2/prod/ksdiff-#{version.before_comma}-#{version.after_comma.before_colon}-#{version.after_colon}.zip"
  name "ksdiff"
  desc "Command-line tool for the App Store version of Kaleidoscope"
  homepage "https://kaleidoscope.app/ksdiff2"

  livecheck do
    url :homepage
    regex(%r{/ksdiff-(\d+(?:\.\d+)*)-(\d+)-(\w+(?:-\d+)*)\.zip}i)
    strategy :page_match do |page, regex|
      js_file = page[%r{src=["']?(/ksdiff\.\w+\.js)["' >]}i, 1]
      next [] if js_file.blank?

      js_file_data = Homebrew::Livecheck::Strategy.page_content("https://kaleidoscope.app#{js_file}")
      next [] if js_file_data[:content].blank?

      js_file_data[:content].scan(regex).map { |match| "#{match[0]},#{match[1]}:#{match[2]}" }
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
