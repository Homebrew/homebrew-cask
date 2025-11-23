cask "bitfocus-buttons" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  sha256 arm:   "f0d7adf7040c052b1b53599aaac05a7c74c555f7e5ab805823be99161ea4d7fe",
         intel: "c6a628b36e9c7b0cede33dd7c41505510c0d97ed945e52cb309fcc425436fcd6"

  on_arm do
    version "1.4.1,4769,492c32cc"
  end
  on_intel do
    version "1.2.2,4157,e14e47c7"
  end

  url "https://s4.bitfocus.io/builds/buttons/bitfocus-buttons-mac-#{arch}-#{version.csv.second}-#{version.csv.third}.pkg"
  name "Bitfocus Buttons"
  desc "Unified control and monitoring software"
  homepage "https://bitfocus.io/buttons"

  livecheck do
    url "https://api.bitfocus.io/v1/product/buttons/packages?branch=stable&limit=150"
    regex(/buttons[._-]mac[._-]#{arch}[._-]v?(\d+(?:\.\d+)*)[._-](\h+)\.pkg/i)
    strategy :json do |json, regex|
      json["packages"]&.map do |package|
        next if package["target"] != "mac-#{livecheck_arch}"

        match = package["uri"]&.match(regex)
        next if match.blank?

        "#{package["version"]&.tr("v", "")},#{match[1]},#{match[2]}"
      end
    end
  end

  pkg "bitfocus-buttons-mac-#{arch}-#{version.csv.second}-#{version.csv.third}.pkg"

  uninstall pkgutil: "io.bitfocus.buttons.pkg"

  zap trash: [
    "~/Library/Application Support/Bitfocus Buttons",
    "~/Library/Caches/io.bitfocus.buttons",
    "~/Library/Preferences/io.bitfocus.buttons.plist",
    "~/Library/WebKit/io.bitfocus.buttons",
  ]
end
