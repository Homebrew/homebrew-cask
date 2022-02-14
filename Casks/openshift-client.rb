cask "openshift-client" do
  version "4.9.21"
  if Hardware::CPU.intel?
    sha256 "583e18caa5377fc269a0d4889c3866ddb119947a1cfa8c1f5fcd3a442768f8cf"
  else
    sha256 ""
  end

  arch = Hardware::CPU.intel? ? "" : "-arm64"
  url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "openshift-client"
  desc "The OpenShift Command Line, part of OKD"
  homepage "https://www.openshift.com"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates false

  binary "oc"

  caveats <<~EOS
    In order to use the cli, the quarantine attribute needs to be removed. To do so, install this cask with:
      brew install --cask --no-quarantine #{token}
  EOS
end
