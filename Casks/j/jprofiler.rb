cask "jprofiler" do
  version "16.0"

  on_macos do
    sha256 "1504b089704961b242ff7f13045f51f1530b39c5fea3e880ba278709ba7998ef"

    url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  end

  on_linux do
    sha256 "c7ff6d6130b36f360e953f88c45c447400e3ca984b05d72d0db9811566a478c0"

    url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_linux-x64_#{version.dots_to_underscores}.tar.gz"
  end

  name "JProfiler"
  desc "Java profiler"
  homepage "https://www.ej-technologies.com/jprofiler"

  livecheck do
    url "https://www.ej-technologies.com/feeds/jprofiler"
    regex(/JProfiler\s*Release\s*v?(\d+(?:\.\d+)+)/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//title").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  on_macos do
    depends_on macos: ">= :big_sur"

    app "JProfiler.app"

    zap trash: [
      "~/.jprofiler*",
      "~/Library/Preferences/com.jprofiler.history.plist",
      "~/Library/Preferences/com.jprofiler.v*.plist",
      "~/Library/Preferences/jprofiler.vmoptions",
    ]
  end

  on_linux do
    depends_on arch: :x86_64

    binary "jprofiler#{version}/bin/jprofiler"

    zap trash: "~/.jprofiler*"
  end
end
