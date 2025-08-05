cask "hy-rpe2" do
  version "1.2.9,2020"
  sha256 :no_check

  url "https://hy-plugins.com/wp-content/uploads#{"/#{version.csv[1..].join("/")}" if version.csv.length > 1}/HY-RPE2.pkg.zip"
  name "HY-RPE2"
  desc "8 track midi sequencer plugin"
  homepage "https://hy-plugins.com/product/hy-rpewin-mac/"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:\.\d+)+)\s*\(/i)
    strategy :page_match do |page, regex|
      # Find the highest version from the release notes
      version = page.scan(regex)
                    .map { |match| match[0] }
                    .max_by { |v| Version.new(v) }
      next unless version

      # Match the date from the file path (if any)
      path_date = page[%r{(?:/(\d+(?:/\d+)*))?/HY-RPE2\.pkg\.zip}i, 1]

      path_date ? "#{version},#{path_date.tr("/", ",")}" : version
    end
  end

  depends_on macos: ">= :sierra"

  pkg "HY-RPE2.pkg"

  uninstall pkgutil: [
    "com.hyplugins.pkg.HY-RPE2-au",
    "com.hyplugins.pkg.HY-RPE2-presets",
    "com.hyplugins.pkg.HY-RPE2-vst2",
    "com.hyplugins.pkg.HY-RPE2-vst3",
  ]

  zap trash: "~/Library/Application Support/HY-Plugins/HY-RPE2.ini",
      rmdir: "~/Library/Application Support/HY-Plugins"
end
