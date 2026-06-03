cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.60"
  sha256 arm:          "6332d8b4a6333046ac30675a06571a1e095f807f49736124a37ec24ddb89f1bd",
         intel:        "bbf2dc659e20670e92ffdf1c446887c91d55f0b523de55f7bea262c7e3993862",
         arm64_linux:  "77e32160fa3434045320a7a37e99e240cb1f8491f3ddca4eb3d2a7e2911f5dcf",
         x86_64_linux: "cb63d857ee25b618a90336d23505ee25afbb6fc8aa9521a8b9ca4ebecff57eed"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
