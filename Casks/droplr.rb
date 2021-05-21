cask "droplr" do
  version "5.9.3,462"
  sha256 "360f1796f3d30c8392eaaaf13b130bc28f38bf12cc322a3ebd9d90839546be12"

  url "https://files.droplr.com/apps/mac/Droplr#{version.before_comma.no_dots}-#{version.after_comma}.zip"
  name "Droplr"
  desc "Screenshot and screen recorder"
  homepage "https://droplr.com/"

  livecheck do
    url "https://files.droplr.com/apps/mac-current"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Droplr(\d+)(\d+)(\d+)-(\d+)\.zip}i)
      "#{match[1]}.#{match[2]}.#{match[3]},#{match[4]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Droplr#{version.before_comma.no_dots}-#{version.after_comma}.pkg"

  uninstall pkgutil: "com.droplr.droplr-mac"
end
