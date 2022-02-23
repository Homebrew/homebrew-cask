cask "gtkwave" do
  version "3.3.107"
  sha256 "0024fa80f4566bc053d705200263c7e7d72f2ae111bf670dc6af90403540d3c7"

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip",
      verified: "downloads.sourceforge.net/gtkwave/"
  name "GTKWave"
  desc "GTK+ based wave viewer"
  homepage "https://gtkwave.sourceforge.io/"

  livecheck do
    url :url
    regex(%r{url=.*?/gtkwave[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]app/}i)
  end

  app "gtkwave.app"
  binary "#{appdir}/gtkwave.app/Contents/Resources/bin/gtkwave_bin_launcher.sh", target: "gtkwave"

  zap trash: [
    "~/Library/Application Support/CrashReporter/gtkwave-bin_*.plist",
    "~/Library/Preferences/com.geda.gtkwave.plist",
    "~/Library/Saved Application State/com.geda.gtkwave.savedState",
  ]

  caveats <<~EOS
    You may need to install Perl’s Switch module to run #{token}’s command line tool.

      https://ughe.github.io/2018/11/06/gtkwave-osx
  EOS
end
