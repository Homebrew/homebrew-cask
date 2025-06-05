cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.17"
  sha256 arm:   "8cd57a3c349439ffe215467474143f52a49fce4b428047d54bec879ff17119fb",
         intel: "083a9a92262cb80781f596f5cc2bc47f7fe3e2991af3f42afd80f7a23e54eb3d"

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
