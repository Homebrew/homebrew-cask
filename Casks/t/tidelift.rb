cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.50"
  sha256 arm:          "0b4becfefd52d8d26909a30c21257d85f0898883a0aeb31631abe45b479dc7be",
         intel:        "f7aee2f4f74b037e867d70634b454c75b95d3cbc5e43e2487ec6bf95e39a9158",
         arm64_linux:  "8fb35ea2aa58cc5f198baf5918b9f2408185c8bb989bfc7dbded22dd497df227",
         x86_64_linux: "f7e4c6b7effe56faddae4eb646567fe6f176a611ad40ce5115744e01bb6864db"

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
