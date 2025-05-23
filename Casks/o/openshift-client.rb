cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.15"
  sha256 arm:   "97d6fd8a2ec058a5061a629a3e02dbe61ff5f14de88135467a88c977f28f1fe5",
         intel: "58e7925719f247868c1cc25870ae4bbb4247694ad2ecde4401ed0b73e5c8dc33"

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
