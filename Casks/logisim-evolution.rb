cask "logisim-evolution" do
  version "3.4.1"
  sha256 "253290b94ae1dba6d5528ff2ea478c2750cee4a40c4710f7da6006dc3f0b4b52"

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}.dmg"
  appcast "https://github.com/reds-heig/logisim-evolution/releases.atom"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/reds-heig/logisim-evolution"

  app "Logisim-evolution.app"

  # Address the broken app issue. https://github.com/reds-heig/logisim-evolution/issues/499
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Logisim-evolution.app"]
  end

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"

  caveats do
    depends_on_java "9+"
  end
end
