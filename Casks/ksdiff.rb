cask "ksdiff" do
  version "3.2,144"
  sha256 "449e7b607f848ebdc39bf8b3f557ffa4e8c6db4a2ec607dad92a790080804f88"

  url "https://updates.kaleidoscope.app/v3/prod/ksdiff-#{version.csv.first}-#{version.csv.second}.zip"
  name "ksdiff"
  desc "Command-line tool for the App Store version of Kaleidoscope"
  homepage "https://kaleidoscope.app/ksdiff2"

  livecheck do
    url :homepage
    regex(%r{/ksdiff-(\d+(?:\.\d+)*)-(\d+)-(\w+(?:-\d+)*)\.zip}i)
    strategy :page_match do |page, regex|
      js_file = page[%r{src=["']?(/ksdiff\d*\.\w+\.js)["' >]}i, 1]
      next [] if js_file.blank?

      js_file_data = Homebrew::Livecheck::Strategy.page_content("https://kaleidoscope.app#{js_file}")
      next [] if js_file_data[:content].blank?

      js_file_data[:content].scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  conflicts_with cask: "kaleidoscope"

  pkg "ksdiff-#{version.csv.first}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
