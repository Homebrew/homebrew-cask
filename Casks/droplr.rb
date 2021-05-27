cask "droplr" do
  version "5.9.5,464"
  sha256 "bd381271637598bb4225c3f79a0eb7cc0515fb839f52b947fcaf1bd95e2ca948"

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
