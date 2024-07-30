cask "86box" do
  version "4.2,6000"
  sha256 "13985538c22d02b6f431e0ec56ff9de6efb6e069845fea81b18ed0ca066f4aa0"

  url "https://github.com/86Box/86Box/releases/download/v#{version.csv.first}/86Box-macOS-x86_64+arm64-b#{version.csv.second}.zip",
      verified: "github.com/86Box/86Box/"
  name "86Box"
  desc "Emulator of x86-based machines based on PCem"
  homepage "https://86box.net/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)*)/86Box[._-]macOS.*?[._-]b(\d+)\.zip$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :mojave"

  app "86Box.app", target: "86Box/86Box.app"

  roms_dir = Pathname("~/Library/Application Support/net.86box.86Box/roms")

  preflight do
    roms_dir.expand_path.mkpath
  end

  zap trash: [
    "/Applications/86Box",
    "~/Library/Application Support/net.86box.86Box",
    "~/Library/Saved Application State/net.86Box.86Box.savedState",
  ]

  caveats do
    <<~EOS
      The latest ROM files from https://github.com/86Box/roms need to be installed into:

        #{roms_dir}
    EOS
  end
end
