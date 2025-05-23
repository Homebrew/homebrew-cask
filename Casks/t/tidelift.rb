cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.21"
  sha256 arm:          "7f74624a4bb37f39127d8f6fec88d00aed9b1a490bb7da7a2f805627bbbf9bed",
         intel:        "62184a258df8c85cda0d5f9063636404739c51d2b1dfb29170bc884493976b71",
         arm64_linux:  "a8c1d1b15ae9ba90c052698be4b5174c2f42c0e7bedd2f00f2a28ebc4ad18999",
         x86_64_linux: "b1f314d0e17753a6401bfb5539ff997c8e1c23eda432102a392c3cdc63af43bf"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
