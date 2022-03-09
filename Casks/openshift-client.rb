cask "openshift-client" do
  version "4.10.2"

  if Hardware::CPU.intel?
    sha256 "0e1a7d132b83d3e7c54c58192f6ee87229ad0581f468ebcd0b21844611bc1322"
  else
    sha256 "634448755b9f22664d5dcb1a42ef9f004121ade3a537c047e4db57f96f0618d6"
  end

  arch = Hardware::CPU.intel? ? "" : "-arm64"
  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
