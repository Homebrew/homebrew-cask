cask "orka" do
  version "2.4.0"
  sha256 "c7f6fbd9bfca29353618f22736d1d83234239fa1a00cb4493c62a853ebaa5abb"

  url "https://cli-builds-public.s3.amazonaws.com/official/#{version}/macos/orka.pkg",
      verified: "cli-builds-public.s3.amazonaws.com/official/"
  name "Orka CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  livecheck do
    url "https://orkadocs.macstadium.com/docs/downloads"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        next unless match[0].start_with?("#{version.major}.")

        match[0]
      end
    end
  end

  pkg "orka.pkg"

  uninstall pkgutil: "com.macstadium.orka.pkg"

  # No zap stanza required
end
