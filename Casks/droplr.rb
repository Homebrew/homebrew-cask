cask "droplr" do
  version "5.9.13,472"
  sha256 "730f0e5064ccc1af034d1b070aeec1e8490c0580e80b4cd8184375ee0a4df723"

  url "https://files.droplr.com/apps/mac/Droplr#{version.before_comma.no_dots}-#{version.after_comma}.zip"
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

  pkg "Droplr#{version.before_comma.no_dots}-#{version.after_comma}.pkg"

  uninstall pkgutil: "com.droplr.droplr-mac"
end
