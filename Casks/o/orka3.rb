cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.4"
  sha256 arm:   "a178fdf70c0b93ff1389da214c0bb659ed4e391833230952f62bede8fc69c807",
         intel: "df2dc53053510a4f8d94d575d1c4ee861dce1e6de4e01aa24513169df0e95e21"

  url "https://cli-builds-public.s3.amazonaws.com/official/#{version}/orka3/macos/#{arch}/orka3.pkg"
  name "Orka3 CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://support.macstadium.com/hc/en-us/articles/42514244203419-Orka3-CLI-Overview-Configuration"

  # If versions with non-stable suffixes (such as `-alpha`) are detected
  # these are still considered stable if served from this url.
  # Upstream use these suffixes in a non-conventional way.
  livecheck do
    url "https://cli-builds-public.s3.amazonaws.com/official/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  pkg "orka3.pkg"
  generate_completions_from_executable "/usr/local/bin/orka3", "completion"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end
