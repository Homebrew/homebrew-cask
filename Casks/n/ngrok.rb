cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.29.0,8opiba68DLc,a"
    sha256 "3035b56f5ad4db9b31b7a748ec2cfbcd65eeee5a4125f43e5ceeaeff17f7cba0"
  end
  on_intel do
    version "3.29.0,g1WQPwbzEE9,a"
    sha256 "571fe19208d1f29618d2729b454f746eba61f3f80868bc92b66fc0f1c00e26bc"
  end

  url "https://bin.equinox.io/#{version.csv.third}/#{version.csv.second}/ngrok-v#{version.major}-#{version.csv.first}-darwin-#{arch}.zip",
      verified: "bin.equinox.io/"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  livecheck do
    url "https://dl.equinox.io/ngrok/ngrok-v#{version.major}/stable/archive"
    regex(%r{href=.*?/([^/]+)/([^/]+)/ngrok[._-]v#{version.major}[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  binary "ngrok"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: [
    "~/.ngrok#{version.major}",
    "~/Library/Application Support/ngrok",
  ]

  caveats <<~EOS
    To install shell completions, add this to your profile:
      if command -v ngrok &>/dev/null; then
        eval "$(ngrok completion)"
      fi
  EOS
end
