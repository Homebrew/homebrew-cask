cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.5"
  sha256 arm:   "2fe932ac818c636cdda9c23e8b0c1f3af7f81ddeee5498719addfd24cce77e39",
         intel: "c11a9aacb3a63e828bcf79ba61ef1976b2f1a1b5c89f9bab1d7d2c2d4e6cabf9"

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
