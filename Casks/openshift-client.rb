cask "openshift-client" do
  version "4.10.20"

  if Hardware::CPU.intel?
    sha256 "9382fa90968e1977fe3b81a18e099b6755f3f8b2aaec7e028abb25d65e621332"
  else
    sha256 "aa0c96671aaa2e54a5f88484416fa63abf203e91c18216ab6551b91f83009e8f"
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
