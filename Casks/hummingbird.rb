cask "hummingbird" do
  version "1.2.1"

  on_intel do
    sha256 "89be6ad9a198ce8589e19dd236881d24b6a1d415b748c5d4ef768ff94786fe9d"

    url "https://eddie.website/repository/hummingbird/#{version}/hummingbird-macos-x86_64-notarized-#{version}.zip",
        verified: "eddie.website"
  end
  on_arm do
    sha256 "3ac509d0b8831b827e19f9945b588703c4f107e87e1ad8dbc19421fb2c7683c0"

    url "https://eddie.website/repository/hummingbird/#{version}/hummingbird-macos-arm64-notarized-#{version}.zip",
        verified: "eddie.website"
  end

  name "hummingbird"
  desc "OpenVPN 3 client based on AirVPN's OpenVPN 3 library fork"
  homepage "https://airvpn.org/hummingbird"

  livecheck do
    url "https://airvpn.org/macos/hummingbird/"
    strategy :page_match
    regex(/eddie_selected_version">(\d+\.\d+\.\d)</i)
  end

  depends_on arch: [:x86_64, :arm64]
  depends_on macos: ">= :high_sierra"

  binary "hummingbird-macos-x86_64-#{version}/hummingbird"

  on_intel do
    postflight do
      set_ownership("#{HOMEBREW_PREFIX}/Caskroom/airvpn-hummingbird/#{version}/hummingbird-macos-x86_64-#{version}/hummingbird", user: "root")
    end
  end
  on_arm do
    postflight do
      set_ownership("#{HOMEBREW_PREFIX}/Caskroom/airvpn-hummingbird/#{version}/hummingbird-macos-arm64-#{version}/hummingbird", user: "root")
    end
  end
end
