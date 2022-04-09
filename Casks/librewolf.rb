cask "librewolf" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  if Hardware::CPU.intel?
    version "99.0,1,d6a6b221192d4042226fda02abd5dc6d"
    sha256 "0cabedf2140b6c57d170dff6d7eb9b2c283ddc70a4f8b88ee145f76a585f7b76"
  else
    version "99.0,1,dde02b2620bfbb7a2ae1e0816f270434"
    sha256 "bb1fb9ce41591b61f8b1710140c122e5e3e4cc634d73b5188ab291ad7a6769ae"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}.en-US.mac.#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)\.en-US\.mac\.#{arch}\.dmg[\s"]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
      end
    end
  end

  app "LibreWolf.app"

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
