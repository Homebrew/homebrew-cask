cask "droplr" do
  version "5.9.0,458"
  sha256 "d7cad6194b2157e5674440f228e1e0c597a585aee85a3206cd8739763a935eb0"

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
