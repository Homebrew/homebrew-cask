cask "electricbinary" do
  version "9.08.1"
  sha256 "fcfd8b543aa0124f764945f2eba3a2c76dd7bd8db403dee2b1a3ddbc70875e5a"

  url "https://ftp.gnu.org/gnu/electric/electricBinary-#{version}.jar"
  name "Electric VLSI Design System"
  desc "Electrical CAD system for the design of integrated circuits"
  homepage "https://www.gnu.org/software/electric/electric.html"

  livecheck do
    url :url
    regex(/href=.*?electricBinary[._-]v?(\d+(?:\.\d+)+)\.jar/i)
  end

  container type: :naked

  artifact "electricBinary-#{version}.jar", target: "#{appdir}/electricBinary-#{version}.jar"

  zap trash: [
    "~/electric.log",
    "~/Library/Preferences/com.sun.electric.plist",
  ]

  caveats do
    depends_on_java "8"
  end
end
