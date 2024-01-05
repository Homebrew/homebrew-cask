cask "perforce" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.2,2535420"

  on_arm do
    sha256 "51d6052f9809013aaadab66d2568e827b41b21927894d2794ececad51c25c5b5"

    url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx12#{arch}/helix-core-server.tgz"
  end
  on_intel do
    sha256 "dbccb96d5a954a038ae6f3f49bf7ec9cd43b7094bec56f04ecb2c8ea41a93a8e"

    url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015#{arch}/helix-core-server.tgz"
  end

  name "Perforce Helix Core Server"
  name "Perforce Helix Command-Line Client (P4)"
  name "Perforce Helix Broker (P4Broker)"
  name "Perforce Helix Versioning Engine (P4D)"
  name "Perforce Helix Proxy (P4P)"
  desc "Version control"
  homepage "https://www.perforce.com/"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    regex(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  binary "p4"
  binary "p4broker"
  binary "p4d"
  binary "p4p"

  # No zap stanza required

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
