cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.10"
  sha256 arm:   "c66f0b3591820d5c004eb883af7511ab490ce93f5762221ee83530d1920bd515",
         intel: "c9567ddba48f0e9e38f4b119e3e003df45f99fe8850ef4eafd8e997cfd277a66"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
