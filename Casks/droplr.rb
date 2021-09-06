cask "droplr" do
  version "59.1.1,470"
  sha256 "5c96b2cfb5cbd12cc03dbd07c64e17c41b97e18c588275fa0b9311d63f6dbd31"

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
