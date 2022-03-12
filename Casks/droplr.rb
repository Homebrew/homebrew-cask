cask "droplr" do
  version "5.9.16,475"
  sha256 "786d294566445746a205e1302244e030d5e94b15d2814984ef5c3eefea001ac3"

  url "https://files.droplr.com/apps/mac/Droplr#{version.csv.first.no_dots}-#{version.csv.second}.zip"
  name "Droplr"
  desc "Screenshot and screen recorder"
  homepage "https://droplr.com/"

  livecheck do
    url "https://files.droplr.com/apps/mac-current"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Droplr(\d)(\d)(\d+)-(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]},#{match[4]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Droplr#{version.csv.first.no_dots}-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.droplr.droplr-mac"
end
