cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.0"
  sha256 arm:   "daa5cae35ae6d969915dfb65701cac0f57a7a71cbcfbef56cd115e17bf0532f6",
         intel: "f5f29c0e242f0326439dbe147aada6f005928507caaabdcef7ef0163ec88316d"

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
