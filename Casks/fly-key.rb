cask "fly-key" do
  version "1.5"
  sha256 "2b89a5994d40e618e9f792097286122f35f137199c495474fa3ac949a23d8366"

  url "https://cdn.better365.cn/FlyKey/FlyKey#{version}.dmg"
  name "FlyKey"
  desc "Show Shortcuts in One Click, Superb Shortcuts Tips"
  homepage "https://www.better365.cn/FlyKey.html"

  livecheck do
    # url "https://www.better365.cn/FlyKey.html"
    # regex(/href="https\:\/\/cdn\.better365\.cn\/FlyKey\/FlyKey(\d+(?:\.\d+)+\w*)\.dmg"/i)
    skip "No version information available"
  end

  pkg "FlyKey#{version}.pkg"

  uninstall pkgutil: "cn.better365.FlyKey",
            quit:    "cn.better365.FlyKey"
end
